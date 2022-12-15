**free

ctl-opt dftactgrp(*no);

dcl-pi P2297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P865.rpgleinc'
/copy 'qrpgleref/P778.rpgleinc'

dcl-ds T1238 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1238 FROM T1238 LIMIT 1;

theCharVar = 'Hello from P2297';
dsply theCharVar;
P2();
P865();
P778();
return;