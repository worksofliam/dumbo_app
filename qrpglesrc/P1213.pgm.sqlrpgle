**free

ctl-opt dftactgrp(*no);

dcl-pi P1213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'

dcl-ds T1045 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1045 FROM T1045 LIMIT 1;

theCharVar = 'Hello from P1213';
dsply theCharVar;
P252();
P785();
P934();
return;