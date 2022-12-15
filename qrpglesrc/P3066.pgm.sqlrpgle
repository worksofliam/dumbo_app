**free

ctl-opt dftactgrp(*no);

dcl-pi P3066;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1997.rpgleinc'
/copy 'qrpgleref/P2463.rpgleinc'
/copy 'qrpgleref/P1991.rpgleinc'

dcl-ds T1248 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1248 FROM T1248 LIMIT 1;

theCharVar = 'Hello from P3066';
dsply theCharVar;
P1997();
P2463();
P1991();
return;