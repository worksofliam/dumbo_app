**free

ctl-opt dftactgrp(*no);

dcl-pi P1389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1309.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P1176.rpgleinc'

dcl-ds T148 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T148 FROM T148 LIMIT 1;

theCharVar = 'Hello from P1389';
dsply theCharVar;
P1309();
P118();
P1176();
return;