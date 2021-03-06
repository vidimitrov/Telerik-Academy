﻿#pragma checksum "..\..\..\Controls\VideoPlayerControls.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "0A6818FD7531F5586FCA2FFBA1215A98"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18033
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using VideoPlayer.Classes;


namespace VideoPlayer.Controls {
    
    
    /// <summary>
    /// VideoPlayer
    /// </summary>
    public partial class VideoPlayer : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 9 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid LayoutRoot;
        
        #line default
        #line hidden
        
        
        #line 11 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid PlaylistControls;
        
        #line default
        #line hidden
        
        
        #line 16 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView ListBoxPlaylist;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid PlayerControls;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid GridVideoPanel;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MediaElement videoElement;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid ControlsPanels;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ProgressBar progressBar;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Slider seekSlider;
        
        #line default
        #line hidden
        
        
        #line 75 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid InformationPanels;
        
        #line default
        #line hidden
        
        
        #line 86 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Slider volumeSlider;
        
        #line default
        #line hidden
        
        
        #line 87 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock currentTime;
        
        #line default
        #line hidden
        
        
        #line 89 "..\..\..\Controls\VideoPlayerControls.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonBrowse;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/VideoPlayer;component/controls/videoplayercontrols.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Controls\VideoPlayerControls.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.LayoutRoot = ((System.Windows.Controls.Grid)(target));
            return;
            case 2:
            this.PlaylistControls = ((System.Windows.Controls.Grid)(target));
            
            #line 11 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.PlaylistControls.KeyDown += new System.Windows.Input.KeyEventHandler(this.UserControl_KeyDown);
            
            #line default
            #line hidden
            return;
            case 3:
            this.ListBoxPlaylist = ((System.Windows.Controls.ListView)(target));
            
            #line 18 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.ListBoxPlaylist.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ListBoxPlaylist_SelectionChanged);
            
            #line default
            #line hidden
            
            #line 19 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.ListBoxPlaylist.KeyDown += new System.Windows.Input.KeyEventHandler(this.UserControl_KeyDown);
            
            #line default
            #line hidden
            return;
            case 4:
            this.PlayerControls = ((System.Windows.Controls.Grid)(target));
            return;
            case 5:
            this.GridVideoPanel = ((System.Windows.Controls.Grid)(target));
            return;
            case 6:
            this.videoElement = ((System.Windows.Controls.MediaElement)(target));
            
            #line 41 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.videoElement.MediaOpened += new System.Windows.RoutedEventHandler(this.videoElement_MediaOpened);
            
            #line default
            #line hidden
            
            #line 41 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.videoElement.MediaEnded += new System.Windows.RoutedEventHandler(this.videoElement_MediaEnded);
            
            #line default
            #line hidden
            return;
            case 7:
            this.ControlsPanels = ((System.Windows.Controls.Grid)(target));
            
            #line 45 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.ControlsPanels.KeyDown += new System.Windows.Input.KeyEventHandler(this.UserControl_KeyDown);
            
            #line default
            #line hidden
            return;
            case 8:
            this.progressBar = ((System.Windows.Controls.ProgressBar)(target));
            return;
            case 9:
            this.seekSlider = ((System.Windows.Controls.Slider)(target));
            
            #line 57 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.seekSlider.ValueChanged += new System.Windows.RoutedPropertyChangedEventHandler<double>(this.PositionChanged);
            
            #line default
            #line hidden
            
            #line 57 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.seekSlider.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(this.seekSlider_MouseLeftButtonUp);
            
            #line default
            #line hidden
            
            #line 58 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.seekSlider.PreviewMouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.seekSlider_PreviewMouseLeftButtonDown);
            
            #line default
            #line hidden
            
            #line 58 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.seekSlider.PreviewMouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(this.seekSlider_PreviewMouseLeftButtonUp);
            
            #line default
            #line hidden
            return;
            case 10:
            
            #line 70 "..\..\..\Controls\VideoPlayerControls.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.OnPlayButtonClick);
            
            #line default
            #line hidden
            return;
            case 11:
            
            #line 71 "..\..\..\Controls\VideoPlayerControls.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.OnPauseButtonClick);
            
            #line default
            #line hidden
            return;
            case 12:
            
            #line 72 "..\..\..\Controls\VideoPlayerControls.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.OnStopButtonClick);
            
            #line default
            #line hidden
            return;
            case 13:
            this.InformationPanels = ((System.Windows.Controls.Grid)(target));
            return;
            case 14:
            this.volumeSlider = ((System.Windows.Controls.Slider)(target));
            
            #line 86 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.volumeSlider.ValueChanged += new System.Windows.RoutedPropertyChangedEventHandler<double>(this.VolumeChanged);
            
            #line default
            #line hidden
            return;
            case 15:
            this.currentTime = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 16:
            
            #line 88 "..\..\..\Controls\VideoPlayerControls.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            case 17:
            this.ButtonBrowse = ((System.Windows.Controls.Button)(target));
            
            #line 89 "..\..\..\Controls\VideoPlayerControls.xaml"
            this.ButtonBrowse.Click += new System.Windows.RoutedEventHandler(this.ButtonBrowse_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

