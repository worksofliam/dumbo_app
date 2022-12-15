**free

ctl-opt dftactgrp(*no);

dcl-pi P1083;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds T1166 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1166 FROM T1166 LIMIT 1;

theCharVar = 'Hello from P1083';
dsply theCharVar;
P701();
P55();
P143();
return;