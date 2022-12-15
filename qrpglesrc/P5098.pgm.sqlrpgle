**free

ctl-opt dftactgrp(*no);

dcl-pi P5098;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5092.rpgleinc'
/copy 'qrpgleref/P2035.rpgleinc'
/copy 'qrpgleref/P3771.rpgleinc'

dcl-ds T1732 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1732 FROM T1732 LIMIT 1;

theCharVar = 'Hello from P5098';
dsply theCharVar;
callp localProc();
P5092();
P2035();
P3771();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5098 in the procedure';
end-proc;