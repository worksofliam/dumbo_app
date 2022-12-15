**free

ctl-opt dftactgrp(*no);

dcl-pi P971;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'

dcl-ds theTable extname('T515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T515 LIMIT 1;

theCharVar = 'Hello from P971';
dsply theCharVar;
P201();
P678();
P631();
return;