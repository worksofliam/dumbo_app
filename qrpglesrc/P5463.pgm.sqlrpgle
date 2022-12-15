**free

ctl-opt dftactgrp(*no);

dcl-pi P5463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2476.rpgleinc'
/copy 'qrpgleref/P3331.rpgleinc'
/copy 'qrpgleref/P3511.rpgleinc'

dcl-ds T1146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1146 FROM T1146 LIMIT 1;

theCharVar = 'Hello from P5463';
dsply theCharVar;
P2476();
P3331();
P3511();
return;