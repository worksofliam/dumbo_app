**free

ctl-opt dftactgrp(*no);

dcl-pi P2604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P939.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P1020.rpgleinc'

dcl-ds T741 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T741 FROM T741 LIMIT 1;

theCharVar = 'Hello from P2604';
dsply theCharVar;
P939();
P2();
P1020();
return;