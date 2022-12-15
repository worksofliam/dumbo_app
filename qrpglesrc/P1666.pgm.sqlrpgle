**free

ctl-opt dftactgrp(*no);

dcl-pi P1666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1261.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds T342 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T342 FROM T342 LIMIT 1;

theCharVar = 'Hello from P1666';
dsply theCharVar;
P1261();
P599();
P143();
return;