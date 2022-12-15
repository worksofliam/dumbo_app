**free

ctl-opt dftactgrp(*no);

dcl-pi P1366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P826.rpgleinc'
/copy 'qrpgleref/P478.rpgleinc'

dcl-ds T226 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T226 FROM T226 LIMIT 1;

theCharVar = 'Hello from P1366';
dsply theCharVar;
P82();
P826();
P478();
return;