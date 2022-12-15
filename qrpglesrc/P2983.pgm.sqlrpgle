**free

ctl-opt dftactgrp(*no);

dcl-pi P2983;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2971.rpgleinc'
/copy 'qrpgleref/P1949.rpgleinc'
/copy 'qrpgleref/P1721.rpgleinc'

dcl-ds T1190 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1190 FROM T1190 LIMIT 1;

theCharVar = 'Hello from P2983';
dsply theCharVar;
P2971();
P1949();
P1721();
return;