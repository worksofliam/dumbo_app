**free

ctl-opt dftactgrp(*no);

dcl-pi P245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds T160 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T160 FROM T160 LIMIT 1;

theCharVar = 'Hello from P245';
dsply theCharVar;
P83();
P123();
P17();
return;