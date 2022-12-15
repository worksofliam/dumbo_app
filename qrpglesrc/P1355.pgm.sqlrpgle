**free

ctl-opt dftactgrp(*no);

dcl-pi P1355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T788 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T788 FROM T788 LIMIT 1;

theCharVar = 'Hello from P1355';
dsply theCharVar;
P602();
P407();
P10();
return;