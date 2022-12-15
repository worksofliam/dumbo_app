**free

ctl-opt dftactgrp(*no);

dcl-pi P2403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2231.rpgleinc'
/copy 'qrpgleref/P1794.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'

dcl-ds T1188 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1188 FROM T1188 LIMIT 1;

theCharVar = 'Hello from P2403';
dsply theCharVar;
P2231();
P1794();
P1069();
return;