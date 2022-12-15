**free

ctl-opt dftactgrp(*no);

dcl-pi P1510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1480.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'

dcl-ds T8 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T8 FROM T8 LIMIT 1;

theCharVar = 'Hello from P1510';
dsply theCharVar;
P1480();
P298();
P1019();
return;