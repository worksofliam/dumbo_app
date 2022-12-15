**free

ctl-opt dftactgrp(*no);

dcl-pi P404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'

dcl-ds T11 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T11 FROM T11 LIMIT 1;

theCharVar = 'Hello from P404';
dsply theCharVar;
P340();
P388();
P365();
return;