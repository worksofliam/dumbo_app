**free

ctl-opt dftactgrp(*no);

dcl-pi P1439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1241.rpgleinc'
/copy 'qrpgleref/P861.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'

dcl-ds T1765 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1765 FROM T1765 LIMIT 1;

theCharVar = 'Hello from P1439';
dsply theCharVar;
P1241();
P861();
P836();
return;