**free

ctl-opt dftactgrp(*no);

dcl-pi P150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds T1041 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1041 FROM T1041 LIMIT 1;

theCharVar = 'Hello from P150';
dsply theCharVar;
P31();
P88();
P138();
return;