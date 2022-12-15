**free

ctl-opt dftactgrp(*no);

dcl-pi P4891;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1970.rpgleinc'
/copy 'qrpgleref/P1788.rpgleinc'
/copy 'qrpgleref/P1107.rpgleinc'

dcl-ds T1132 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1132 FROM T1132 LIMIT 1;

theCharVar = 'Hello from P4891';
dsply theCharVar;
P1970();
P1788();
P1107();
return;