**free

ctl-opt dftactgrp(*no);

dcl-pi P688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

theCharVar = 'Hello from P688';
dsply theCharVar;
P241();
P604();
P175();
return;