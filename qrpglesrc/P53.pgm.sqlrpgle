**free

ctl-opt dftactgrp(*no);

dcl-pi P53;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds T495 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T495 FROM T495 LIMIT 1;

theCharVar = 'Hello from P53';
dsply theCharVar;
P44();
P2();
P51();
return;