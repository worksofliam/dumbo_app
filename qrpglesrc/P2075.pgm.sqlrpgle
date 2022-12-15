**free

ctl-opt dftactgrp(*no);

dcl-pi P2075;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1196.rpgleinc'
/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P1895.rpgleinc'

dcl-ds T437 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T437 FROM T437 LIMIT 1;

theCharVar = 'Hello from P2075';
dsply theCharVar;
P1196();
P889();
P1895();
return;