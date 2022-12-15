**free

ctl-opt dftactgrp(*no);

dcl-pi P414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'

dcl-ds theTable extname('T82') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T82 LIMIT 1;

theCharVar = 'Hello from P414';
dsply theCharVar;
P191();
P334();
P147();
return;