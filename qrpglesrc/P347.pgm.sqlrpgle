**free

ctl-opt dftactgrp(*no);

dcl-pi P347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

theCharVar = 'Hello from P347';
dsply theCharVar;
P130();
P71();
P116();
return;