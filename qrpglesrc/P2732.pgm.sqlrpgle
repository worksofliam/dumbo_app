**free

ctl-opt dftactgrp(*no);

dcl-pi P2732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2024.rpgleinc'
/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P2318.rpgleinc'

dcl-ds T1219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1219 FROM T1219 LIMIT 1;

theCharVar = 'Hello from P2732';
dsply theCharVar;
P2024();
P805();
P2318();
return;