**free

ctl-opt dftactgrp(*no);

dcl-pi P615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds theTable extname('T976') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T976 LIMIT 1;

theCharVar = 'Hello from P615';
dsply theCharVar;
P160();
P121();
P222();
return;