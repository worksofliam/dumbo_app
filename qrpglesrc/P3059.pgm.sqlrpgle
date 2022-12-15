**free

ctl-opt dftactgrp(*no);

dcl-pi P3059;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2777.rpgleinc'
/copy 'qrpgleref/P2728.rpgleinc'
/copy 'qrpgleref/P1876.rpgleinc'

dcl-ds T1105 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1105 FROM T1105 LIMIT 1;

theCharVar = 'Hello from P3059';
dsply theCharVar;
P2777();
P2728();
P1876();
return;