**free

ctl-opt dftactgrp(*no);

dcl-pi P2740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2021.rpgleinc'
/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P2598.rpgleinc'

dcl-ds T259 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T259 FROM T259 LIMIT 1;

theCharVar = 'Hello from P2740';
dsply theCharVar;
P2021();
P1117();
P2598();
return;