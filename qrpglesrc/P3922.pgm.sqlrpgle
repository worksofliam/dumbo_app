**free

ctl-opt dftactgrp(*no);

dcl-pi P3922;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1022.rpgleinc'
/copy 'qrpgleref/P3135.rpgleinc'
/copy 'qrpgleref/P1670.rpgleinc'

dcl-ds T495 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T495 FROM T495 LIMIT 1;

theCharVar = 'Hello from P3922';
dsply theCharVar;
P1022();
P3135();
P1670();
return;