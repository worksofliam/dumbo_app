**free

ctl-opt dftactgrp(*no);

dcl-pi P1872;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1042.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'

dcl-ds T1096 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1096 FROM T1096 LIMIT 1;

theCharVar = 'Hello from P1872';
dsply theCharVar;
P1042();
P546();
P922();
return;