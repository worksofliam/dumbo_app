**free

ctl-opt dftactgrp(*no);

dcl-pi P3149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P768.rpgleinc'
/copy 'qrpgleref/P2300.rpgleinc'
/copy 'qrpgleref/P3103.rpgleinc'

theCharVar = 'Hello from P3149';
dsply theCharVar;
P768();
P2300();
P3103();
return;