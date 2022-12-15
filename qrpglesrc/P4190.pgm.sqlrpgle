**free

ctl-opt dftactgrp(*no);

dcl-pi P4190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3768.rpgleinc'
/copy 'qrpgleref/P1861.rpgleinc'
/copy 'qrpgleref/P3714.rpgleinc'

dcl-ds T1389 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1389 FROM T1389 LIMIT 1;

theCharVar = 'Hello from P4190';
dsply theCharVar;
callp localProc();
P3768();
P1861();
P3714();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4190 in the procedure';
end-proc;