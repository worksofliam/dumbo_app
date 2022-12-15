**free

ctl-opt dftactgrp(*no);

dcl-pi P3516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2639.rpgleinc'
/copy 'qrpgleref/P1798.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds T991 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T991 FROM T991 LIMIT 1;

theCharVar = 'Hello from P3516';
dsply theCharVar;
P2639();
P1798();
P296();
return;