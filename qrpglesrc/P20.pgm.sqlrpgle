**free

ctl-opt dftactgrp(*no);

dcl-pi P20;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds T895 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T895 FROM T895 LIMIT 1;

theCharVar = 'Hello from P20';
dsply theCharVar;
P7();
P2();
P3();
return;