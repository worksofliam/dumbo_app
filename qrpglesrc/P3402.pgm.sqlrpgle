**free

ctl-opt dftactgrp(*no);

dcl-pi P3402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3144.rpgleinc'
/copy 'qrpgleref/P2751.rpgleinc'
/copy 'qrpgleref/P3356.rpgleinc'

dcl-ds T1631 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1631 FROM T1631 LIMIT 1;

theCharVar = 'Hello from P3402';
dsply theCharVar;
P3144();
P2751();
P3356();
return;