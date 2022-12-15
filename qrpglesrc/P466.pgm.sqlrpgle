**free

ctl-opt dftactgrp(*no);

dcl-pi P466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'

dcl-ds theTable extname('T29') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T29 LIMIT 1;

theCharVar = 'Hello from P466';
dsply theCharVar;
P87();
P18();
P362();
return;