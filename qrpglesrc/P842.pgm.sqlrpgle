**free

ctl-opt dftactgrp(*no);

dcl-pi P842;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P821.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

theCharVar = 'Hello from P842';
dsply theCharVar;
P821();
P353();
P78();
return;