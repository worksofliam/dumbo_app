**free

ctl-opt dftactgrp(*no);

dcl-pi P53;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T1097 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1097 FROM T1097 LIMIT 1;

theCharVar = 'Hello from P53';
dsply theCharVar;
P7();
P51();
P13();
return;