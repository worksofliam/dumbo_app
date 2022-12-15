**free

ctl-opt dftactgrp(*no);

dcl-pi P5142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2793.rpgleinc'
/copy 'qrpgleref/P2068.rpgleinc'
/copy 'qrpgleref/P1710.rpgleinc'

dcl-ds T1216 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1216 FROM T1216 LIMIT 1;

theCharVar = 'Hello from P5142';
dsply theCharVar;
P2793();
P2068();
P1710();
return;