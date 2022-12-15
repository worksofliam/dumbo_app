**free

ctl-opt dftactgrp(*no);

dcl-pi P2539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P1672.rpgleinc'
/copy 'qrpgleref/P1130.rpgleinc'

dcl-ds T157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T157 FROM T157 LIMIT 1;

theCharVar = 'Hello from P2539';
dsply theCharVar;
P502();
P1672();
P1130();
return;