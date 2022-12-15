**free

ctl-opt dftactgrp(*no);

dcl-pi P2634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1013.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P856.rpgleinc'

dcl-ds T1081 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1081 FROM T1081 LIMIT 1;

theCharVar = 'Hello from P2634';
dsply theCharVar;
P1013();
P474();
P856();
return;