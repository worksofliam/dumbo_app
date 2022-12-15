**free

ctl-opt dftactgrp(*no);

dcl-pi P2757;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1076.rpgleinc'
/copy 'qrpgleref/P931.rpgleinc'
/copy 'qrpgleref/P2539.rpgleinc'

dcl-ds T1151 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1151 FROM T1151 LIMIT 1;

theCharVar = 'Hello from P2757';
dsply theCharVar;
P1076();
P931();
P2539();
return;