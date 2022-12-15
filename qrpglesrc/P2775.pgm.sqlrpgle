**free

ctl-opt dftactgrp(*no);

dcl-pi P2775;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P1211.rpgleinc'
/copy 'qrpgleref/P2543.rpgleinc'

theCharVar = 'Hello from P2775';
dsply theCharVar;
P138();
P1211();
P2543();
return;