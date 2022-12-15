**free

ctl-opt dftactgrp(*no);

dcl-pi P439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'

dcl-ds T95 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T95 FROM T95 LIMIT 1;

theCharVar = 'Hello from P439';
dsply theCharVar;
P122();
P8();
P174();
return;