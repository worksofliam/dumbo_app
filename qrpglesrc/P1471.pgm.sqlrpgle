**free

ctl-opt dftactgrp(*no);

dcl-pi P1471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1324.rpgleinc'
/copy 'qrpgleref/P1103.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'

dcl-ds T367 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T367 FROM T367 LIMIT 1;

theCharVar = 'Hello from P1471';
dsply theCharVar;
P1324();
P1103();
P1108();
return;