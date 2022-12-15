**free

ctl-opt dftactgrp(*no);

dcl-pi P1963;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P1207.rpgleinc'
/copy 'qrpgleref/P884.rpgleinc'

dcl-ds T1620 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1620 FROM T1620 LIMIT 1;

theCharVar = 'Hello from P1963';
dsply theCharVar;
P576();
P1207();
P884();
return;