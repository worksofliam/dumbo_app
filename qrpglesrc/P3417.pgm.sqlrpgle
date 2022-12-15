**free

ctl-opt dftactgrp(*no);

dcl-pi P3417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1763.rpgleinc'
/copy 'qrpgleref/P960.rpgleinc'
/copy 'qrpgleref/P2483.rpgleinc'

dcl-ds T597 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T597 FROM T597 LIMIT 1;

theCharVar = 'Hello from P3417';
dsply theCharVar;
P1763();
P960();
P2483();
return;