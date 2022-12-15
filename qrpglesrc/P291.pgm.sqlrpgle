**free

ctl-opt dftactgrp(*no);

dcl-pi P291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds T342 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T342 FROM T342 LIMIT 1;

theCharVar = 'Hello from P291';
dsply theCharVar;
P28();
P114();
P123();
return;