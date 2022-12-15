**free

ctl-opt dftactgrp(*no);

dcl-pi P75;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds T1192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1192 FROM T1192 LIMIT 1;

theCharVar = 'Hello from P75';
dsply theCharVar;
P39();
P1();
P63();
return;