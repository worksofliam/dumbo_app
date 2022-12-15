**free

ctl-opt dftactgrp(*no);

dcl-pi P2088;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P884.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'

dcl-ds T1415 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1415 FROM T1415 LIMIT 1;

theCharVar = 'Hello from P2088';
dsply theCharVar;
P884();
P80();
P723();
return;