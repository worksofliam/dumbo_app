**free

ctl-opt dftactgrp(*no);

dcl-pi P1993;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1004.rpgleinc'
/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P667.rpgleinc'

dcl-ds T205 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T205 FROM T205 LIMIT 1;

theCharVar = 'Hello from P1993';
dsply theCharVar;
P1004();
P446();
P667();
return;