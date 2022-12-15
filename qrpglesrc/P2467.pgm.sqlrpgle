**free

ctl-opt dftactgrp(*no);

dcl-pi P2467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1440.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'

dcl-ds T1221 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1221 FROM T1221 LIMIT 1;

theCharVar = 'Hello from P2467';
dsply theCharVar;
P1440();
P28();
P649();
return;