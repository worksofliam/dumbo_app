**free

ctl-opt dftactgrp(*no);

dcl-pi P2801;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P633.rpgleinc'

dcl-ds theTable extname('T879') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T879 LIMIT 1;

theCharVar = 'Hello from P2801';
dsply theCharVar;
P450();
P305();
P633();
return;