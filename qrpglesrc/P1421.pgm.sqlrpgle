**free

ctl-opt dftactgrp(*no);

dcl-pi P1421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds T115 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T115 FROM T115 LIMIT 1;

theCharVar = 'Hello from P1421';
dsply theCharVar;
P79();
P742();
P143();
return;