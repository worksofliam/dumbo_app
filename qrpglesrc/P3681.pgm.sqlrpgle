**free

ctl-opt dftactgrp(*no);

dcl-pi P3681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1390.rpgleinc'
/copy 'qrpgleref/P2121.rpgleinc'
/copy 'qrpgleref/P3654.rpgleinc'

dcl-ds T116 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T116 FROM T116 LIMIT 1;

theCharVar = 'Hello from P3681';
dsply theCharVar;
P1390();
P2121();
P3654();
return;