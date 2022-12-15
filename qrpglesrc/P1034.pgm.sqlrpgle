**free

ctl-opt dftactgrp(*no);

dcl-pi P1034;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P954.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds T1417 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1417 FROM T1417 LIMIT 1;

theCharVar = 'Hello from P1034';
dsply theCharVar;
P347();
P954();
P302();
return;