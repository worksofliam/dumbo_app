**free

ctl-opt dftactgrp(*no);

dcl-pi P909;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'

dcl-ds T742 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T742 FROM T742 LIMIT 1;

theCharVar = 'Hello from P909';
dsply theCharVar;
P700();
P413();
P554();
return;