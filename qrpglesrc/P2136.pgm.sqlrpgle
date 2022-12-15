**free

ctl-opt dftactgrp(*no);

dcl-pi P2136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1650.rpgleinc'
/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P1511.rpgleinc'

theCharVar = 'Hello from P2136';
dsply theCharVar;
P1650();
P1829();
P1511();
return;